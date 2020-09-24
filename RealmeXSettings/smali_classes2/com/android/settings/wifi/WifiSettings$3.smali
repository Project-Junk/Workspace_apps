.class final Lcom/android/settings/wifi/WifiSettings$3;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settingslib/wifi/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/a;

.field final synthetic b:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/a;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$3;->b:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$3;->a:Lcom/android/settingslib/wifi/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$3;->a:Lcom/android/settingslib/wifi/a;

    .line 2382
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1196
    check-cast v0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->b()V

    :cond_0
    return-void
.end method
