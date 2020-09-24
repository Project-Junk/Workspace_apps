.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$8;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$8;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickListener(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$8;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$8;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method
