.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$14;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Lcom/coloros/settings/privacy/SafeQuestionActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;->a:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method
