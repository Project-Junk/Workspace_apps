.class final Lcom/android/settings/applications/AppStorageSettings$1;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 538
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$1;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 541
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clean_cancle"

    const-string v1, "1"

    .line 542
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$1;->a:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->a(Lcom/android/settings/applications/AppStorageSettings;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "20012"

    const-string v2, "click_app_info_items"

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
