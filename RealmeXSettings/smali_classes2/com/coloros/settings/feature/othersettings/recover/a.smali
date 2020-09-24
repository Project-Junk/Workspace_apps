.class public abstract Lcom/coloros/settings/feature/othersettings/recover/a;
.super Ljava/lang/Object;
.source "AbsClearDataStrategy.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/recover/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/recover/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/recover/a;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 3

    .line 56
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMasterClearBroadcast: isClearAllData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "formatdata_backup"

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "persist.sys.wipemedia"

    const-string v2, "1"

    .line 63
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process: start clear data, isClearAllData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/recover/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    .line 1070
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/a;->a:Ljava/lang/String;

    const-string v1, "wipePersistentDataBlock: "

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persistent_data_block"

    .line 1073
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1077
    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/coloros/settings/feature/othersettings/recover/a$a;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/a;Landroid/service/persistentdata/PersistentDataBlockManager;B)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/othersettings/recover/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 1079
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/a;->f(Landroid/content/Context;)V

    return-void

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/a;->f(Landroid/content/Context;)V

    return-void
.end method

.method abstract a()Z
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
