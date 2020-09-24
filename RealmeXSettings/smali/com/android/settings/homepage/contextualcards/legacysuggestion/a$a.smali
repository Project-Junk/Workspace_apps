.class public final Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;
.super Lcom/android/settings/homepage/contextualcards/b$a;
.source "LegacySuggestionContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field v:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)Lcom/android/settings/homepage/contextualcards/b$a;
    .locals 2

    .line 1052
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot change card type for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1053
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
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;->b()Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;)V

    return-object v0
.end method
