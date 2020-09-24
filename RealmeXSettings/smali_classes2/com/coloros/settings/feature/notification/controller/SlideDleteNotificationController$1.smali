.class final Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController$1;
.super Ljava/util/ArrayList;
.source "SlideDleteNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const-class v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v0, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController$1;->add(Ljava/lang/Object;)Z

    .line 43
    const-class v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/controller/SlideDleteNotificationController$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
