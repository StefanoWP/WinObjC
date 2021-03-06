//******************************************************************************
//
// Copyright (c) Microsoft. All rights reserved.
//
// This code is licensed under the MIT License (MIT).
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//******************************************************************************

#pragma once
#include <string>
#include <map>
#include <vector>

struct CommandLineOptions {
    std::wstring executable;
    std::map<std::wstring, std::vector<std::wstring>> optMap;

    // std::pair.first: input file name.
    // std::pair.second: If set merge all namespaces from std::pair.first into a single namespace.
    std::pair<std::wstring, bool> metaDataFileInfo;
};

bool parseCommandLine(int argc, wchar_t** argv, CommandLineOptions& options);