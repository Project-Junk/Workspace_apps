.class public final Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;
.super Lcom/android/settings/homepage/contextualcards/b;
.source "LegacySuggestionContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;
    }
.end annotation


# instance fields
.field final l:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/b;-><init>(Lcom/android/settings/homepage/contextualcards/b$a;)V

    .line 1041
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a$a;->v:Landroid/app/PendingIntent;

    .line 29
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/a;->l:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
