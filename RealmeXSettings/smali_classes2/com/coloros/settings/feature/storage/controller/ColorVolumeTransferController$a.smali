.class final Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;
.super Landroid/database/ContentObserver;
.source "ColorVolumeTransferController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

    .line 330
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 331
    iput-object p3, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->b:Ljava/lang/String;

    .line 332
    iput-object p4, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 337
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->a(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->a:Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;->b(Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeTransferController$a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/storage/b/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 342
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
