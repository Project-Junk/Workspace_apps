.class final Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController$1;
.super Ljava/util/ArrayList;
.source "NotificationPromptPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;
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

    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const-class v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController$1;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v0, Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController$1;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController$1;->add(Ljava/lang/Object;)Z

    return-void
.end method