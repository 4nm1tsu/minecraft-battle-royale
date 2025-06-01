import os
import json5  # ← 変更
from glob import glob
import json

DIRECTORY = './'

def scale_recoil_values(recoil_data):
    for axis in ['pitch', 'yaw']:
        if axis in recoil_data:
            for entry in recoil_data[axis]:
                entry['value'] = [v * 2.5 for v in entry['value']]
    return recoil_data

json_files = glob(os.path.join(DIRECTORY, '*.json'))

for filepath in json_files:
    with open(filepath, 'r', encoding='utf-8') as f:
        try:
            data = json5.load(f)  # ← ここも変更
        except Exception as e:
            print(f"Error reading {filepath}: {e}")
            continue

    if 'recoil' in data:
        data['recoil'] = scale_recoil_values(data['recoil'])

        # json5では書き出しも対応するが、純粋なjsonに戻すためにjson.dumpを使う
        with open(filepath, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
        print(f"Updated recoil values in {filepath}")
    else:
        print(f"No 'recoil' found in {filepath}, skipping.")
