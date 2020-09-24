.class final Lcom/android/settings/wfd/WifiDisplaySettings$1$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings$1;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wfd/WifiDisplaySettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings$1;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->a:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 359
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$1$1;->a:Lcom/android/settings/wfd/WifiDisplaySettings$1;

    iget-object p1, p1, Lcom/android/settings/wfd/WifiDisplaySettings$1;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    return-void
.end method
