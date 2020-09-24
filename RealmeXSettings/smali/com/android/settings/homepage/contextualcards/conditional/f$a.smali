.class public final Lcom/android/settings/homepage/contextualcards/conditional/f$a;
.super Lcom/android/settings/homepage/contextualcards/b$a;
.source "ConditionFooterContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)Lcom/android/settings/homepage/contextualcards/b$a;
    .locals 2

    .line 2042
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot change card type for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic a()Lcom/android/settings/homepage/contextualcards/b;
    .locals 2

    .line 1047
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/f;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/f$a;B)V

    return-object v0
.end method
