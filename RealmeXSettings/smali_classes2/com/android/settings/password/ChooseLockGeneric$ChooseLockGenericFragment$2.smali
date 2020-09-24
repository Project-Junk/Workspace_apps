.class final Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->c(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;

.field final synthetic c:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->c:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->a:I

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->b:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 1

    const/4 p2, 0x2

    .line 1159
    new-array p2, p2, [Ljava/lang/Object;

    .line 1160
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const-string p1, "Can\'t remove face %d. Reason: %s"

    .line 1159
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChooseLockGenericFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1166
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->c:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->a:I

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->b:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;

    invoke-static {p1, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->b(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$a;)V

    :cond_0
    return-void
.end method
