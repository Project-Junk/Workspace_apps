.class final Lcom/coloros/settings/OppoEditPinActivity$3;
.super Ljava/lang/Object;
.source "OppoEditPinActivity.java"

# interfaces
.implements Lcom/coloros/settings/receiver/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/OppoEditPinActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/OppoEditPinActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/OppoEditPinActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$3;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSimPlugout slotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSubscription="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$3;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-static {p1}, Lcom/coloros/settings/OppoEditPinActivity;->b(Lcom/coloros/settings/OppoEditPinActivity;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoEditPinActivity"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/coloros/settings/OppoEditPinActivity$3;->a:Lcom/coloros/settings/OppoEditPinActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/OppoEditPinActivity;->finish()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSimPlugin slotId="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoEditPinActivity"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSimStateChanged slotId="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoEditPinActivity"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
