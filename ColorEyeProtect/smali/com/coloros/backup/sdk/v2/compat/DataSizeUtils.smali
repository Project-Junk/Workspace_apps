.class public Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static estimateSize(II)J
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const-wide/16 p0, 0x0

    goto :goto_1

    :sswitch_0
    mul-int/lit16 p1, p1, 0xaa

    goto :goto_0

    :sswitch_1
    const-wide/32 p0, 0x14000

    goto :goto_1

    :sswitch_2
    const-wide/32 p0, 0x6e000

    goto :goto_1

    :sswitch_3
    const-wide/16 p0, 0x26c

    goto :goto_1

    :sswitch_4
    mul-int/lit16 p1, p1, 0x140

    goto :goto_0

    :sswitch_5
    mul-int/lit16 p1, p1, 0x15e

    goto :goto_0

    :sswitch_6
    mul-int/lit16 p1, p1, 0xfa

    goto :goto_0

    :sswitch_7
    mul-int/lit16 p1, p1, 0x1c2

    goto :goto_0

    :sswitch_8
    mul-int/lit16 p1, p1, 0x2bc

    goto :goto_0

    :sswitch_9
    const p0, 0x3e800

    mul-int/2addr p1, p0

    goto :goto_0

    :sswitch_a
    mul-int/lit16 p1, p1, 0x2ee

    :goto_0
    int-to-long p0, p1

    goto :goto_1

    :sswitch_b
    mul-int/lit16 p0, p1, 0x190

    div-int/lit8 p1, p1, 0x2

    mul-int/lit16 p1, p1, 0x7800

    add-int/2addr p0, p1

    int-to-long p0, p0

    :goto_1
    return-wide p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x110 -> :sswitch_7
        0x120 -> :sswitch_6
        0x130 -> :sswitch_5
        0x140 -> :sswitch_4
        0x150 -> :sswitch_3
        0x160 -> :sswitch_2
        0x180 -> :sswitch_1
        0x250 -> :sswitch_0
    .end sparse-switch
.end method
