.class Lcom/android/systemui/statusbar/policy/EthernetIcons;
.super Ljava/lang/Object;
.source "EthernetIcons.java"


# static fields
.field static final ETHERNET_ICONS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f080f6f

    aput v4, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const v4, 0x7f080f70

    aput v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method