.class public final Lcom/android/settings/homepage/contextualcards/conditional/k;
.super Lcom/android/settings/homepage/contextualcards/b;
.source "ConditionalContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/k$a;
    }
.end annotation


# instance fields
.field final l:J

.field final m:I

.field final n:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/k$a;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/b;-><init>(Lcom/android/settings/homepage/contextualcards/b$a;)V

    .line 1063
    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    .line 41
    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/k;->l:J

    .line 2063
    iget v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 42
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/k;->m:I

    .line 3063
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 43
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/k;->n:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/k$a;B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/k;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/k$a;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
