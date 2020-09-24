.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    .line 14
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 38
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_string_accessibility_no_wifi:I

    sput v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f110087
        0x7f110095
        0x7f110098
        0x7f110097
        0x7f110096
    .end array-data

    :array_1
    .array-data 4
        0x7f110086
        0x7f110057
        0x7f11005c
        0x7f11005b
        0x7f11005a
    .end array-data

    :array_2
    .array-data 4
        0x7f11008b
        0x7f110106
        0x7f11010b
        0x7f11010a
        0x7f110109
    .end array-data

    :array_3
    .array-data 4
        0x7f11006f
        0x7f11006e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
