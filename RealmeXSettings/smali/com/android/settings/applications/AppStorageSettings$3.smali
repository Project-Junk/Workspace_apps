.class final Lcom/android/settings/applications/AppStorageSettings$3;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppStorageSettings;->b(I)Lcolor/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 521
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "clean_ok"

    const-string v0, "1"

    .line 522
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object p2, p0, Lcom/android/settings/applications/AppStorageSettings$3;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p2}, Lcom/android/settings/applications/AppStorageSettings;->c(Lcom/android/settings/applications/AppStorageSettings;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "20012"

    const-string v1, "click_app_info_items"

    invoke-static {p2, v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p1}, Lcom/android/settings/applications/AppStorageSettings;->d(Lcom/android/settings/applications/AppStorageSettings;)V

    return-void
.end method
