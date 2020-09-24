.class public final synthetic Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/password/ConfirmLockPassword;

.field private final synthetic f$1:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmLockPassword;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;->f$0:Lcom/android/settings/password/ConfirmLockPassword;

    iput-object p2, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;->f$1:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;->f$0:Lcom/android/settings/password/ConfirmLockPassword;

    iget-object v1, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$jc11qrZ4YwQ3C3Dg4erTvb304ew;->f$1:Landroid/view/MenuItem;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/password/ConfirmLockPassword;->lambda$jc11qrZ4YwQ3C3Dg4erTvb304ew(Lcom/android/settings/password/ConfirmLockPassword;Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
