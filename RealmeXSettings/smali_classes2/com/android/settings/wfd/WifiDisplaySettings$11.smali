.class final Lcom/android/settings/wfd/WifiDisplaySettings$11;
.super Landroidx/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$11;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$11;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 395
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$11;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$11;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->d(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$11;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$11;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$11;->setChecked(Z)V

    return-void
.end method
