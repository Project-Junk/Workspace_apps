.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$3;
.super Ljava/lang/Object;
.source "ResetGenericActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/CountDownTimer;

.field final synthetic b:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$3;->b:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$3;->a:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 560
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$3;->a:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
