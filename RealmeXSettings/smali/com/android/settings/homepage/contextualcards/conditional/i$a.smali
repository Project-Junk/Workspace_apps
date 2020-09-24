.class public final Lcom/android/settings/homepage/contextualcards/conditional/i$a;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/homepage/contextualcards/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/homepage/contextualcards/conditional/j;


# direct methods
.method private constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/j;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/i$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/j;B)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/i$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/j;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/j;

    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/i$a;->a:Lcom/android/settings/homepage/contextualcards/conditional/j;

    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/j;->f()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
