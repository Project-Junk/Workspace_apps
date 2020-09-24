.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_4_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_5_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_6_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_DISABLED:I

.field public static final QS_WIFI_NO_NETWORK:I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_4_FULL_ICONS:[I

.field private static final WIFI_4_NO_INTERNET_ICONS:[I

.field static final WIFI_4_SIGNAL_STRENGTH:[[I

.field static final WIFI_5_FULL_ICONS:[I

.field private static final WIFI_5_NO_INTERNET_ICONS:[I

.field static final WIFI_5_SIGNAL_STRENGTH:[[I

.field static final WIFI_6_FULL_ICONS:[I

.field private static final WIFI_6_NO_INTERNET_ICONS:[I

.field static final WIFI_6_SIGNAL_STRENGTH:[[I

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_NO_NETWORK:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    .line 24
    new-array v1, v0, [I

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    .line 32
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    .line 40
    new-array v1, v0, [I

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_4_signal_0:I

    aput v2, v1, v3

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_4_signal_1:I

    aput v2, v1, v4

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_4_signal_2:I

    aput v2, v1, v5

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_4_signal_3:I

    aput v2, v1, v6

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_4_signal_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_FULL_ICONS:[I

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_NO_INTERNET_ICONS:[I

    .line 56
    new-array v1, v0, [I

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_5_signal_0:I

    aput v2, v1, v3

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_5_signal_1:I

    aput v2, v1, v4

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_5_signal_2:I

    aput v2, v1, v5

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_5_signal_3:I

    aput v2, v1, v6

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_5_signal_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_FULL_ICONS:[I

    .line 64
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_NO_INTERNET_ICONS:[I

    .line 72
    new-array v1, v0, [I

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_6_signal_0:I

    aput v2, v1, v3

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_6_signal_1:I

    aput v2, v1, v4

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_6_signal_2:I

    aput v2, v1, v5

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_6_signal_3:I

    aput v2, v1, v6

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_6_signal_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_FULL_ICONS:[I

    .line 80
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_NO_INTERNET_ICONS:[I

    .line 88
    new-array v0, v5, [[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 93
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 95
    new-array v0, v5, [[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    .line 100
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    .line 102
    new-array v0, v5, [[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    .line 107
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_SIGNAL_STRENGTH:[[I

    .line 109
    new-array v0, v5, [[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    .line 114
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    .line 116
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_0:I

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_DISABLED:I

    .line 117
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_wifi_signal_0:I

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    .line 118
    sget v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    .line 120
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 4
        0x7f0808dc
        0x7f0808dd
        0x7f0808de
        0x7f0808df
        0x7f0808e0
    .end array-data

    :array_1
    .array-data 4
        0x7f0808e1
        0x7f0808e2
        0x7f0808e3
        0x7f0808e4
        0x7f0808e5
    .end array-data

    :array_2
    .array-data 4
        0x7f0808eb
        0x7f0808ec
        0x7f0808ed
        0x7f0808ee
        0x7f0808ef
    .end array-data

    :array_3
    .array-data 4
        0x7f0808f5
        0x7f0808f6
        0x7f0808f7
        0x7f0808f8
        0x7f0808f9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
