.class final Lcom/coloros/settings/feature/othersettings/recover/f$1;
.super Ljava/lang/Object;
.source "RecoveryDataHelper.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/recover/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/recover/f;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/f$f;

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/feature/othersettings/recover/f;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/f;Lcom/coloros/settings/feature/othersettings/recover/f$f;I)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->c:Lcom/coloros/settings/feature/othersettings/recover/f;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$f;

    iput p3, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$f;

    iget-object v1, v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : onOverTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoveryDataHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->c:Lcom/coloros/settings/feature/othersettings/recover/f;

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Lcom/coloros/settings/feature/othersettings/recover/f;I)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->a:Lcom/coloros/settings/feature/othersettings/recover/f$f;

    iget-object v1, v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoveryDataHelper"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->c:Lcom/coloros/settings/feature/othersettings/recover/f;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f$1;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Lcom/coloros/settings/feature/othersettings/recover/f;I)V

    return-void
.end method
