.class final Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1420
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->d:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iput-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->a:Z

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1423
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->d:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "unlock_set_pin"

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->b:Ljava/lang/String;

    :goto_0
    invoke-static {p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    .line 1424
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.intent.action.DELETE_FINGERPRINTS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    .line 1425
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1426
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$5;->c:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
