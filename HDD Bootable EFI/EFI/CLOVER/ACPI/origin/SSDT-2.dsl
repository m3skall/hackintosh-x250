/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Sun May 19 14:48:36 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000009CB (2507)
 *     Revision         0x01
 *     Checksum         0x30
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "SataAhci", 0x00001000)
{
    /*
     * External declarations were imported from
     * a reference file -- DSDT.aml
     */

    External (_SB_.PCI0.SAT1, DeviceObj)    // Warning: Unknown object
    External (DPP0, UnknownObj)    // Warning: Unknown object
    External (DPP1, UnknownObj)    // Warning: Unknown object
    External (DPP2, UnknownObj)    // Warning: Unknown object
    External (DPP3, UnknownObj)    // Warning: Unknown object
    External (DPP4, UnknownObj)    // Warning: Unknown object
    External (DVS0, UnknownObj)    // Warning: Unknown object
    External (DVS1, UnknownObj)    // Warning: Unknown object
    External (DVS2, UnknownObj)    // Warning: Unknown object
    External (DVS3, UnknownObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.SAT1)
    {
        Device (PRT0)
        {
            Name (DIP0, 0x00)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP0, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT1)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0001FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP1, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT2)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP2, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT3)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0003FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP3, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT4)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0004FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP4, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }
    }
}

