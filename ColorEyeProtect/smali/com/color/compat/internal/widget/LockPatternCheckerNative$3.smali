.class Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/internal/widget/LockPatternCheckerWrapper$OnVerifyCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/internal/widget/LockPatternCheckerNative;->verifyPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;


# direct methods
.method constructor <init>(Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;->val$callback:Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternCheckerNative$3;->val$callback:Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;

    invoke-interface {p0, p1, p2}, Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;->onVerified([BI)V

    return-void
.end method
