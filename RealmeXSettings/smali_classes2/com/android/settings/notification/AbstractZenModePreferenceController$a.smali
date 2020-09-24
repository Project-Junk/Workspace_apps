.class final Lcom/android/settings/notification/AbstractZenModePreferenceController$a;
.super Landroid/database/ContentObserver;
.source "AbstractZenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/net/Uri;

.field final c:Landroid/net/Uri;

.field final synthetic d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

.field private final e:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/AbstractZenModePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    .line 134
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    .line 125
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->a:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    .line 126
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->b:Landroid/net/Uri;

    const-string p1, "zen_duration"

    .line 128
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->c:Landroid/net/Uri;

    .line 135
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->e:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->c:Landroid/net/Uri;

    .line 152
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {p1}, Lcom/android/settings/notification/w;->a()V

    .line 154
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->j:Lcom/android/settings/notification/w;

    invoke-virtual {p1}, Lcom/android/settings/notification/w;->b()V

    .line 155
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->k:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p2, p1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->k:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->d:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->e:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method
