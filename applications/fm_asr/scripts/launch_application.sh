# SPDX-FileCopyrightText: Copyright (c) 2022-2023 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export WORKSPACE_DIR=$(pwd)
export CONFIG_FILE=/workspace/params/holoscan.yml
#fm-asr-app-local
docker run -it --rm --net=host --gpus device=0 -v $WORKSPACE_DIR:/workspace --device=/dev/bus/usb --device=/dev/snd holoscan_app:latest python /workspace/fm_asr_app.py $CONFIG_FILE
