/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-13.aml, Sun May 19 14:48:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001CE8 (7400)
 *     Revision         0x02
 *     Checksum         0xC9
 *     OEM ID           "hack"
 *     OEM Table ID     "_IALL"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_IALL", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGBE.XPRW, PkgObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._HID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT0._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._BST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._HID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.BAT1._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.BCCS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HKEY.BCSS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.TMP0, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.XQ14, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.XQ15, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.XQ16, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.KBD_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.QPRW, PkgObj)    // (from opcode)
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (QPRW, PkgObj)    // (from opcode)
    External (RMCF.AUDL, IntObj)    // (from opcode)
    External (RMCF.BKLT, IntObj)    // (from opcode)
    External (RMCF.DAUD, IntObj)    // (from opcode)
    External (RMCF.DPTS, IntObj)    // (from opcode)
    External (RMCF.DWOU, IntObj)    // (from opcode)
    External (RMCF.FBTP, IntObj)    // (from opcode)
    External (RMCF.GRAN, IntObj)    // (from opcode)
    External (RMCF.LEVW, IntObj)    // (from opcode)
    External (RMCF.LMAX, IntObj)    // (from opcode)
    External (RMCF.SHUT, IntObj)    // (from opcode)
    External (RMCF.SSTF, IntObj)    // (from opcode)
    External (RMCF.XPEE, IntObj)    // (from opcode)
    External (RMDA, IntObj)    // (from opcode)
    External (XPRW, PkgObj)    // (from opcode)
    External (XWAK, MethodObj)    // 1 Arguments (from opcode)

    Device (RMCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (HELP, 0, NotSerialized)
        {
            Store ("TYPE indicates type of the computer. 0: desktop, 1: laptop", Debug)
            Store ("HIGH selects display type. 1: high resolution, 2: low resolution", Debug)
            Store ("IGPI overrides ig-platform-id or snb-platform-id", Debug)
            Store ("DPTS for laptops only. 1: enables/disables DGPU in _WAK/_PTS", Debug)
            Store ("SHUT enables shutdown fix. bit 0: disables _PTS code when Arg0==5, bit 1: SLPE=0 when Arg0==5", Debug)
            Store ("XPEE enables XHC.PMEE fix. 1: set XHC.PMEE to zero in _PTS when Arg0==5", Debug)
            Store ("SSTF enables _SST LED fix. 1: enables _SI._SST in _WAK when Arg0 == 3", Debug)
            Store ("AUDL indicates audio layout-id for patched AppleHDA. Ones: no injection", Debug)
            Store ("BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight", Debug)
            Store ("LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer", Debug)
        }

        Name (TYPE, One)
        Name (HIGH, Zero)
        Name (IGPI, Zero)
        Name (DPTS, Zero)
        Name (SHUT, Zero)
        Name (XPEE, Zero)
        Name (SSTF, One)
        Name (AUDL, 0x02)
        Name (DAUD, One)
        Name (BKLT, One)
        Name (LMAX, Ones)
        Name (LEVW, Ones)
        Name (GRAN, Zero)
        Name (FBTP, Zero)
        Name (DWOU, One)
    }

    Method (XOSI, 1, NotSerialized)
    {
        Store (Package (0x0A)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013", 
                "Windows 2015"
            }, Local0)
        Return (LNotEqual (Ones, Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Device (_SB.PCI0.IMEI)
    {
        Name (_ADR, 0x00160000)  // _ADR: Address
    }

    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (RMP3, PCI_Config, Zero, 0x14)
    }

    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
        Field (^RMP3, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        OperationRegion (RMB1, SystemMemory, And (BAR1, 0xFFFFFFFFFFFFFFF0), 0x000E1184)
        Field (RMB1, AnyAcc, Lock, Preserve)
        {
            Offset (0x48250), 
            LEV2,   32, 
            LEVL,   32, 
            Offset (0x70040), 
            P0BL,   32, 
            Offset (0xC2000), 
            GRAN,   32, 
            Offset (0xC8250), 
            LEVW,   32, 
            LEVX,   32, 
            LEVD,   32, 
            Offset (0xE1180), 
            PCHL,   32
        }

        Method (INI1, 1, NotSerialized)
        {
            If (LEqual (Zero, And (0x02, Arg0)))
            {
                Store (0xC0000000, Local5)
                If (CondRefOf (\RMCF.LEVW))
                {
                    If (LNotEqual (Ones, \RMCF.LEVW))
                    {
                        Store (\RMCF.LEVW, Local5)
                    }
                }

                Store (Local5, ^LEVW)
            }

            If (And (0x04, Arg0))
            {
                If (CondRefOf (\RMCF.GRAN))
                {
                    Store (\RMCF.GRAN, ^GRAN)
                }
                Else
                {
                    Store (Zero, ^GRAN)
                }
            }
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (One, Local4)
            If (CondRefOf (\RMCF.BKLT))
            {
                Store (\RMCF.BKLT, Local4)
            }

            If (LNot (And (One, Local4)))
            {
                Return (Zero)
            }

            Store (^GDID, Local0)
            Store (Ones, Local2)
            If (CondRefOf (\RMCF.LMAX))
            {
                Store (\RMCF.LMAX, Local2)
            }

            Store (Zero, Local3)
            If (CondRefOf (\RMCF.FBTP))
            {
                Store (\RMCF.FBTP, Local3)
            }

            If (LOr (LEqual (One, Local3), LNotEqual (Ones, Match (Package (0x10)
                                {
                                    0x010B, 
                                    0x0102, 
                                    0x0106, 
                                    0x1106, 
                                    0x1601, 
                                    0x0116, 
                                    0x0126, 
                                    0x0112, 
                                    0x0122, 
                                    0x0152, 
                                    0x0156, 
                                    0x0162, 
                                    0x0166, 
                                    0x016A, 
                                    0x46, 
                                    0x42
                                }, MEQ, Local0, MTR, Zero, Zero))))
            {
                If (LEqual (Ones, Local2))
                {
                    Store (0x0710, Local2)
                }

                ShiftRight (^LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LAnd (LNot (And (0x08, Local4)), LNotEqual (Local2, Local1)))
                {
                    Divide (Multiply (^LEVL, Local2), Local1, , Local0)
                    ShiftLeft (Local2, 0x10, Local3)
                    If (LGreater (Local2, Local1))
                    {
                        Store (Local3, ^LEVX)
                        Store (Local0, ^LEVL)
                    }
                    Else
                    {
                        Store (Local0, ^LEVL)
                        Store (Local3, ^LEVX)
                    }
                }
            }
            ElseIf (LOr (LEqual (0x03, Local3), LNotEqual (Ones, Match (Package (0x04)
                                {
                                    0x3E9B, 
                                    0x3EA5, 
                                    0x3E92, 
                                    0x3E91
                                }, MEQ, Local0, MTR, Zero, Zero))))
            {
                If (LEqual (Ones, Local2))
                {
                    Store (0xFFFF, Local2)
                }

                INI1 (Local4)
                Store (^LEVX, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LAnd (LNot (And (0x08, Local4)), LNotEqual (Local2, Local1)))
                {
                    Divide (Multiply (^LEVD, Local2), Local1, , Local0)
                    If (LGreater (Local2, Local1))
                    {
                        Store (Local2, ^LEVX)
                        Store (Local0, ^LEVD)
                    }
                    Else
                    {
                        Store (Local0, ^LEVD)
                        Store (Local2, ^LEVX)
                    }
                }
            }
            Else
            {
                If (LEqual (Ones, Local2))
                {
                    If (LNotEqual (Ones, Match (Package (0x16)
                                    {
                                        0x0D26, 
                                        0x0A26, 
                                        0x0D22, 
                                        0x0412, 
                                        0x0416, 
                                        0x0A16, 
                                        0x0A1E, 
                                        0x0A1E, 
                                        0x0A2E, 
                                        0x041E, 
                                        0x041A, 
                                        0x0BD1, 
                                        0x0BD2, 
                                        0x0BD3, 
                                        0x1606, 
                                        0x160E, 
                                        0x1616, 
                                        0x161E, 
                                        0x1626, 
                                        0x1622, 
                                        0x1612, 
                                        0x162B
                                    }, MEQ, Local0, MTR, Zero, Zero)))
                    {
                        Store (0x0AD9, Local2)
                    }
                    Else
                    {
                        Store (0x056C, Local2)
                    }
                }

                INI1 (Local4)
                ShiftRight (^LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LAnd (LNot (And (0x08, Local4)), LNotEqual (Local2, Local1)))
                {
                    Or (Divide (Multiply (And (^LEVX, 0xFFFF), Local2), Local1, ), ShiftLeft (Local2, 0x10), Local0)
                    Store (Local0, ^LEVX)
                }
            }

            If (LEqual (Local2, 0x0710))
            {
                Store (0x0E, _UID)
            }
            ElseIf (LEqual (Local2, 0x0AD9))
            {
                Store (0x0F, _UID)
            }
            ElseIf (LEqual (Local2, 0x056C))
            {
                Store (0x10, _UID)
            }
            ElseIf (LEqual (Local2, 0x07A1))
            {
                Store (0x11, _UID)
            }
            ElseIf (LEqual (Local2, 0x1499))
            {
                Store (0x12, _UID)
            }
            ElseIf (LEqual (Local2, 0xFFFF))
            {
                Store (0x13, _UID)
            }
            Else
            {
                Store (0x63, _UID)
            }
        }
    }

    Device (_SB.PCI0.SMBU.BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address
        Device (DVL0)
        {
            Name (_ADR, 0x57)  // _ADR: Address
            Name (_CID, "diagsvault")  // _CID: Compatible ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x02)
                {
                    "address", 
                    0x57
                })
            }
        }
    }

    Method (_SB.PCI0.IGBE._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
    {
        Store (\_SB.PCI0.IGBE.XPRW, Local0)
        If (One)
        {
            If (CondRefOf (\RMCF.DWOU))
            {
                If (LNot (\RMCF.DWOU))
                {
                    Return (Local0)
                }
            }

            Store (Zero, Index (Local0, One))
        }

        Return (Local0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        Store (XWAK (Arg0), Local0)
        If (CondRefOf (\RMCF.DPTS))
        {
            If (\RMCF.DPTS)
            {
                If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF))
                {
                    \_SB.PCI0.PEG0.PEGP._OFF ()
                }

                If (CondRefOf (\_SB.PCI0.PEGP.DGFX._OFF))
                {
                    \_SB.PCI0.PEGP.DGFX._OFF ()
                }
            }
        }

        If (CondRefOf (\RMCF.SSTF))
        {
            If (\RMCF.SSTF)
            {
                If (LAnd (LEqual (0x03, Arg0), CondRefOf (\_SI._SST)))
                {
                    \_SI._SST (One)
                }
            }
        }

        Return (Local0)
    }

    Scope (_SB.PCI0.EH01)
    {
        OperationRegion (RMP1, PCI_Config, 0x54, 0x02)
        Field (RMP1, WordAcc, NoLock, Preserve)
        {
            PSTE,   2
        }
    }

    Scope (_SB.PCI0.LPC)
    {
        OperationRegion (RMP1, PCI_Config, 0xF0, 0x04)
        Field (RMP1, DWordAcc, NoLock, Preserve)
        {
            RCB3,   32
        }

        OperationRegion (FDM1, SystemMemory, Add (And (RCB3, 0xFFFFFFFFFFFFC000), 0x3418), 0x04)
        Field (FDM1, DWordAcc, NoLock, Preserve)
        {
                ,   15, 
            FDE1,   1
        }
    }

    Device (_SB.PCI0.RMD3)
    {
        Name (_HID, "RMD30000")  // _HID: Hardware ID
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (0x03, ^^EH01.PSTE)
            Store (One, ^^LPC.FDE1)
        }
    }

    Method (_SB.PCI0.XHC.ESEL, 0, NotSerialized)
    {
    }

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (CondRefOf (\RMCF.AUDL))
        {
            If (LEqual (Ones, \RMCF.AUDL))
            {
                Return (Zero)
            }
        }

        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Store (Package (0x08)
            {
                "layout-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "no-controller-patch", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }, 

                "PinConfigurations", 
                Buffer (Zero){}
            }, Local0)
        If (CondRefOf (\RMCF.AUDL))
        {
            CreateDWordField (DerefOf (Index (Local0, One)), Zero, AUDL)
            Store (\RMCF.AUDL, AUDL)
        }

        Store (Zero, Local1)
        If (CondRefOf (\RMDA))
        {
            Store (One, Local1)
        }

        If (CondRefOf (\RMCF.DAUD))
        {
            If (LEqual (Zero, \RMCF.DAUD))
            {
                Store (One, Local1)
            }
        }

        If (Local1)
        {
            Store ("#hda-gfx", Index (Local0, 0x02))
        }

        Return (Local0)
    }

    Method (_SB.PCI0.HDAU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (CondRefOf (\RMCF.AUDL))
        {
            If (LEqual (Ones, \RMCF.AUDL))
            {
                Return (Zero)
            }
        }

        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Store (Package (0x06)
            {
                "layout-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "no-controller-patch", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, Local0)
        If (CondRefOf (\RMCF.AUDL))
        {
            CreateDWordField (DerefOf (Index (Local0, One)), Zero, AUDL)
            Store (\RMCF.AUDL, AUDL)
        }

        Store (Zero, Local1)
        If (CondRefOf (\RMDA))
        {
            Store (One, Local1)
        }

        If (CondRefOf (\RMCF.DAUD))
        {
            If (LEqual (Zero, \RMCF.DAUD))
            {
                Store (One, Local1)
            }
        }

        If (Local1)
        {
            Store ("#hda-gfx", Index (Local0, 0x02))
        }

        Return (Local0)
    }

    Method (_SB.PCI0.XHC._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
    {
        Store (\_SB.PCI0.XHC.QPRW, Local0)
        If (One)
        {
            If (CondRefOf (\RMCF.DWOU))
            {
                If (LNot (\RMCF.DWOU))
                {
                    Return (Local0)
                }
            }

            Store (Zero, Index (Local0, One))
        }

        Return (Local0)
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Store (Arg3, Local0)
        Or (Arg2, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg1, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg0, ShiftLeft (Local0, 0x08), Local0)
        Return (Local0)
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (RE1B, 1, Serialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE)
        }

        Method (RECB, 2, Serialized)
        {
            ShiftRight (Arg1, 0x03, Arg1)
            Name (TEMP, Buffer (Arg1){})
            Add (Arg0, Arg1, Arg1)
            Store (Zero, Local0)
            While (LLess (Arg0, Arg1))
            {
                Store (RE1B (Arg0), Index (TEMP, Local0))
                Increment (Arg0)
                Increment (Local0)
            }

            Return (TEMP)
        }

        OperationRegion (ECO2, EmbeddedControl, Zero, 0x0100)
        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36), 
            WAC0,   8, 
            WAC1,   8, 
            Offset (0x84), 
            HFN1,   8, 
            HFN2,   8
        }

        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BRC0,   8, 
            BRC1,   8, 
            BFC0,   8, 
            BFC1,   8, 
            BAE0,   8, 
            BAE1,   8, 
            BRS0,   8, 
            BRS1,   8, 
            BAC0,   8, 
            BAC1,   8, 
            BVO0,   8, 
            BVO1,   8, 
            BAF0,   8, 
            BAF1,   8, 
            BBS0,   8, 
            BBS1,   8
        }

        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BBM0,   8, 
            BBM1,   8
        }

        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BDC0,   8, 
            BDC1,   8, 
            BDV0,   8, 
            BDV1,   8, 
            BOM0,   8, 
            BOM1,   8, 
            BSI0,   8, 
            BSI1,   8, 
            BDT0,   8, 
            BDT1,   8, 
            BSN0,   8, 
            BSN1,   8
        }

        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BCH0,   8, 
            BCH1,   8, 
            BCH2,   8, 
            BCH3,   8
        }

        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BMNX,   128
        }

        Field (ECO2, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BDNX,   128
        }

        Method (XWAC, 0, NotSerialized)
        {
            Return (B1B2 (WAC0, WAC1))
        }

        Method (XBRC, 0, NotSerialized)
        {
            Return (B1B2 (BRC0, BRC1))
        }

        Method (XBFC, 0, NotSerialized)
        {
            Return (B1B2 (BFC0, BFC1))
        }

        Method (XBAC, 0, NotSerialized)
        {
            Return (B1B2 (BAC0, BAC1))
        }

        Method (XBVO, 0, NotSerialized)
        {
            Return (B1B2 (BVO0, BVO1))
        }

        Method (XBBM, 0, NotSerialized)
        {
            Return (B1B2 (BBM0, BBM1))
        }

        Method (XBDC, 0, NotSerialized)
        {
            Return (B1B2 (BDC0, BDC1))
        }

        Method (XBSN, 0, NotSerialized)
        {
            Return (B1B2 (BSN0, BSN1))
        }

        Method (XBDV, 0, NotSerialized)
        {
            Return (B1B2 (BDV0, BDV1))
        }

        Method (XBCH, 0, NotSerialized)
        {
            Return (B1B4 (BCH0, BCH1, BCH2, BCH3))
        }

        Method (XBMN, 0, NotSerialized)
        {
            Return (RECB (0xA0, 0x80))
        }

        Method (XBDN, 0, NotSerialized)
        {
            Return (RECB (0xA0, 0x80))
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Or (^^BAT0._STA (), ^^BAT1._STA ()))
            }

            Name (B0CO, Zero)
            Name (B1CO, Zero)
            Name (B0DV, Zero)
            Name (B1DV, Zero)
            Method (CVWA, 3, NotSerialized)
            {
                If (Arg2)
                {
                    Divide (Multiply (Arg0, 0x03E8), Arg1, , Arg0)
                }

                Return (Arg0)
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Store (^^BAT0._BIF (), Local0)
                Store (^^BAT0._STA (), Local1)
                If (LEqual (Local1, 0x1F))
                {
                    Store (DerefOf (Index (Local0, One)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local1)
                    }

                    Store (DerefOf (Index (Local0, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local1)
                    }

                    Store (DerefOf (Index (Local0, 0x04)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local1)
                    }
                }

                Store (^^BAT1._BIF (), Local2)
                Store (^^BAT1._STA (), Local3)
                If (LEqual (Local3, 0x1F))
                {
                    Store (DerefOf (Index (Local2, One)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local3)
                    }

                    Store (DerefOf (Index (Local2, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local3)
                    }

                    Store (DerefOf (Index (Local2, 0x04)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local3)
                    }
                }

                If (LAnd (LNotEqual (Local1, 0x1F), LEqual (Local3, 0x1F)))
                {
                    Store (Local2, Local0)
                    Store (Local3, Local1)
                    Store (Zero, Local3)
                }

                If (LAnd (LEqual (Local1, 0x1F), LEqual (Local3, 0x1F)))
                {
                    Store (LNot (DerefOf (Index (Local0, Zero))), B0CO)
                    Store (LNot (DerefOf (Index (Local2, Zero))), B1CO)
                    Store (DerefOf (Index (Local0, 0x04)), B0DV)
                    Store (DerefOf (Index (Local2, 0x04)), B1DV)
                    Store (One, Index (Local0, Zero))
                    Add (CVWA (DerefOf (Index (Local0, One)), B0DV, B0CO), CVWA (DerefOf (Index (Local2, One)), B1DV, B1CO), Index (Local0, One))
                    Add (CVWA (DerefOf (Index (Local0, 0x02)), B0DV, B0CO), CVWA (DerefOf (Index (Local2, 0x02)), B1DV, B1CO), Index (Local0, 0x02))
                    Divide (Add (B0DV, B1DV), 0x02, , Index (Local0, 0x04))
                    Add (CVWA (DerefOf (Index (Local0, 0x05)), B0DV, B0CO), CVWA (DerefOf (Index (Local2, 0x05)), B1DV, B1CO), Index (Local0, 0x05))
                    Add (CVWA (DerefOf (Index (Local0, 0x06)), B0DV, B0CO), CVWA (DerefOf (Index (Local2, 0x06)), B1DV, B1CO), Index (Local0, 0x06))
                }

                Return (Local0)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Store (^^BAT0._BST (), Local0)
                Store (^^BAT0._STA (), Local1)
                If (LEqual (Local1, 0x1F))
                {
                    Store (DerefOf (Index (Local0, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local1)
                    }
                }

                Store (^^BAT1._BST (), Local2)
                Store (^^BAT1._STA (), Local3)
                If (LEqual (Local3, 0x1F))
                {
                    Store (DerefOf (Index (Local2, 0x02)), Local4)
                    If (LOr (LNot (Local4), LEqual (Local4, Ones)))
                    {
                        Store (Zero, Local3)
                    }
                }

                If (LAnd (LNotEqual (Local1, 0x1F), LEqual (Local3, 0x1F)))
                {
                    Store (Local2, Local0)
                    Store (Local3, Local1)
                    Store (Zero, Local3)
                }

                If (LAnd (LEqual (Local1, 0x1F), LEqual (Local3, 0x1F)))
                {
                    Store (DerefOf (Index (Local0, Zero)), Local4)
                    Store (DerefOf (Index (Local2, Zero)), Local5)
                    If (LOr (LEqual (Local4, 0x02), LEqual (Local5, 0x02)))
                    {
                        Store (0x02, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, One), LEqual (Local5, One)))
                    {
                        Store (One, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, 0x05), LEqual (Local5, 0x05)))
                    {
                        Store (0x05, Index (Local0, Zero))
                    }
                    ElseIf (LOr (LEqual (Local4, 0x04), LEqual (Local5, 0x04)))
                    {
                        Store (0x04, Index (Local0, Zero))
                    }

                    Add (CVWA (DerefOf (Index (Local0, One)), B0DV, B0CO), CVWA (DerefOf (Index (Local2, One)), B1DV, B1CO), Index (Local0, One))
                    Add (CVWA (DerefOf (Index (Local0, 0x02)), B0DV, B0CO), CVWA (DerefOf (Index (Local2, 0x02)), B1DV, B1CO), Index (Local0, 0x02))
                    Divide (Add (DerefOf (Index (Local0, 0x03)), DerefOf (Index (Local2, 0x03))), 0x02, , Index (Local0, 0x03))
                }

                Return (Local0)
            }
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPC.KBD, 0x033E)
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPC.KBD, 0x0405)
            \_SB.PCI0.LPC.EC.XQ15 ()
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPC.KBD, 0x0406)
            \_SB.PCI0.LPC.EC.XQ14 ()
        }

        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x046E)
            \_SB.PCI0.LPC.EC.XQ16 ()
        }

        Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPC.KBD, 0x0368)
        }

        Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPC.KBD, 0x0369)
        }

        Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0410)
        }

        Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0422)
        }

        Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (KBD, 0x0419)
        }
    }

    Name (_SB.PCI0.HDEF.RMCF, Package (0x02)
    {
        "CodecCommander", 
        Package (0x0A)
        {
            "Custom Commands", 
            Package (0x03)
            {
                Package (0x00){}, 
                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0x57, 0x08, 0x83                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0xA7, 0x07, 0x24                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }
            }, 

            "Perform Reset", 
            ">y", 
            "Perform Reset on External Wake", 
            ">y", 
            "Send Delay", 
            0x0A, 
            "Sleep Nodes", 
            ">n"
        }
    })
    Scope (_SB.PCI0.LPC.KBD)
    {
        Name (QTHS, Zero)
        Method (QTHR, 0, Serialized)
        {
            If (LNotEqual (QTHS, Zero))
            {
                Return (Zero)
            }

            Store (One, QTHS)
            Store (0x4B, Local1)
            Store (0x50, Local2)
            Store (0x02, Local0)
            While (Local0)
            {
                ShiftLeft (Local0, 0x08, Local3)
                \_SB.PCI0.LPC.EC.HKEY.BCCS (Or (Local3, Local1))
                \_SB.PCI0.LPC.EC.HKEY.BCSS (Or (Local3, Local2))
                Decrement (Local0)
            }
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "Thinkpad_ClickPad"
            })
        }

        Name (RMCF, Package (0x0C)
        {
            "Synaptics TouchPad", 
            Package (0x0A)
            {
                "BogusDeltaThreshX", 
                0x0320, 
                "BogusDeltaThreshY", 
                0x0320, 
                "ScrollResolution", 
                0x0190, 
                "TrackpointScrollYMultiplier", 
                0xFFFF, 
                "TrackpointScrollXMultiplier", 
                0xFFFF
            }, 

            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x02)
                {
                    Package (0x00){}, 
                    "e037=64"
                }
            }, 

            "ALPS GlidePoint", 
            Package (0x02)
            {
                "DisableDevice", 
                ">y"
            }, 

            "Sentelic FSP", 
            Package (0x02)
            {
                "DisableDevice", 
                ">y"
            }, 

            "Mouse", 
            Package (0x02)
            {
                "DisableDevice", 
                ">y"
            }, 

            "Controller", 
            Package (0x02)
            {
                "WakeDelay", 
                Zero
            }
        })
    }

    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x04)
        {
            "EH01", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x00){}
            }, 

            "8086_9cb1", 
            Package (0x02)
            {
                "ports", 
                Package (0x0C)
                {
                    "HS01", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS02", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS07", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS08", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x08, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SS01", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0C, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SS02", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0D, 0x00, 0x00, 0x00                         
                        }
                    }
                }
            }
        })
    }
}

