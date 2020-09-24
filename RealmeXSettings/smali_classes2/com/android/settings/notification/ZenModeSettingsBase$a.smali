.class final Lcom/android/settings/notification/ZenModeSettingsBase$a;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/net/Uri;

.field final synthetic c:Lcom/android/settings/notification/ZenModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 104
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->a(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    .line 100
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->a:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    .line 101
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->b:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;B)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase$a;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->b(Lcom/android/settings/notification/ZenModeSettingsBase;)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/ZenModeSettingsBase;->q:Lcom/android/settings/notification/w;

    invoke-virtual {p1}, Lcom/android/settings/notification/w;->a()V

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$a;->c:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->e()V

    :cond_1
    return-void
.end method
