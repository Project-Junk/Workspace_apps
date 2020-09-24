.class final Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a()Ljava/lang/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CompletableFuture;

.field final synthetic b:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;->b:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 2

    .line 102
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a$1;->b:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    mul-int/lit8 p1, p1, 0x28

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x28

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;->a(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$a;[Ljava/lang/Object;)V

    return-void
.end method
