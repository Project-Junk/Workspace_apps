.class final Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Lcom/android/settings/deviceinfo/d;
.source "StorageWizardMigrateConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->b:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->b:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->f()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const p1, 0x7f1215d4

    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->b(I[Ljava/lang/CharSequence;)V

    return-void
.end method
