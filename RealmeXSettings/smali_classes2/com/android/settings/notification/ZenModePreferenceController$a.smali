.class final Lcom/android/settings/notification/ZenModePreferenceController$a;
.super Landroid/database/ContentObserver;
.source "ZenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/net/Uri;

.field final synthetic c:Lcom/android/settings/notification/ZenModePreferenceController;

.field private final d:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->c:Lcom/android/settings/notification/ZenModePreferenceController;

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    .line 80
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->a:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    .line 81
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->b:Landroid/net/Uri;

    .line 88
    iput-object p2, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->d:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->c:Lcom/android/settings/notification/ZenModePreferenceController;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->c:Lcom/android/settings/notification/ZenModePreferenceController;

    iget-object p2, p0, Lcom/android/settings/notification/ZenModePreferenceController$a;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/ZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
