.class public final Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/internal/widget/LockPatternUtilsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestThrottledExceptionNative"
.end annotation


# instance fields
.field private final mCause:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;


# direct methods
.method private constructor <init>(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;->mCause:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;Lcom/color/compat/internal/widget/LockPatternUtilsNative$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;-><init>(Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;)V

    return-void
.end method


# virtual methods
.method public getTimeoutMs()I
    .locals 0

    iget-object p0, p0, Lcom/color/compat/internal/widget/LockPatternUtilsNative$RequestThrottledExceptionNative;->mCause:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;

    invoke-virtual {p0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper$RequestThrottledExceptionWrapper;->getTimeoutMs()I

    move-result p0

    return p0
.end method
