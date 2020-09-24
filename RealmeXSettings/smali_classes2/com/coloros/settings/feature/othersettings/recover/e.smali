.class public final Lcom/coloros/settings/feature/othersettings/recover/e;
.super Ljava/lang/Object;
.source "ClearMmsStrategy.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/recover/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/recover/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p2, 0x7f12050a

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "clear_message"

    .line 56
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "ClearMmsStrategy"

    const-string v0, "process: start clear mms"

    .line 57
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/coloros/settings/feature/othersettings/recover/e$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/e$a;-><init>(B)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/e$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "ClearMmsStrategy"

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f12050b

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f12050b

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
