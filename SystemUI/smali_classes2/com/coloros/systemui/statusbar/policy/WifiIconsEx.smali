.class public final Lcom/coloros/systemui/statusbar/policy/WifiIconsEx;
.super Lcom/android/systemui/statusbar/policy/WifiIcons;
.source "WifiIconsEx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/policy/WifiIconsEx$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/policy/WifiIconsEx;",
        "Lcom/android/systemui/statusbar/policy/WifiIcons;",
        "()V",
        "Companion",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/systemui/statusbar/policy/WifiIconsEx$Companion;

.field public static final WIFI_DOUBLE:I = 0x7f080f37


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/systemui/statusbar/policy/WifiIconsEx$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/statusbar/policy/WifiIconsEx$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/policy/WifiIconsEx;->Companion:Lcom/coloros/systemui/statusbar/policy/WifiIconsEx$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiIcons;-><init>()V

    return-void
.end method
