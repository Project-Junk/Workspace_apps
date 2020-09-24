.class public final Lcom/android/settings/homepage/contextualcards/conditional/g;
.super Lcom/android/settings/homepage/contextualcards/b;
.source "ConditionHeaderContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/g$a;
    }
.end annotation


# instance fields
.field final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/g$a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/b;-><init>(Lcom/android/settings/homepage/contextualcards/b$a;)V

    .line 1069
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/g$a;->v:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/g;->l:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/g$a;B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/g;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/g$a;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 63
    :cond_1
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/g;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/conditional/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/g;->l:Ljava/util/List;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/g;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/g;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/g;->l:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
