.class final Lcom/google/android/setupcompat/internal/i$a;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/setupcompat/internal/i$b;

.field final b:Lcom/google/android/setupcompat/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/setupcompat/internal/i$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;Lcom/google/android/setupcompat/a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/setupcompat/internal/i$b;B)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/setupcompat/internal/i$b;Lcom/google/android/setupcompat/a;)V
    .locals 1
    .param p2    # Lcom/google/android/setupcompat/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/i$a;->a:Lcom/google/android/setupcompat/internal/i$b;

    .line 302
    iput-object p2, p0, Lcom/google/android/setupcompat/internal/i$a;->b:Lcom/google/android/setupcompat/a;

    .line 303
    sget-object v0, Lcom/google/android/setupcompat/internal/i$b;->d:Lcom/google/android/setupcompat/internal/i$b;

    if-ne p1, v0, :cond_0

    const-string p1, "CompatService cannot be null when state is connected"

    .line 304
    invoke-static {p2, p1}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/setupcompat/internal/i$b;Lcom/google/android/setupcompat/a;B)V
    .locals 0

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/i$a;-><init>(Lcom/google/android/setupcompat/internal/i$b;Lcom/google/android/setupcompat/a;)V

    return-void
.end method
