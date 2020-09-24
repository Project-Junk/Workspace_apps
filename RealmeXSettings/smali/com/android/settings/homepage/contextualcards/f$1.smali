.class final Lcom/android/settings/homepage/contextualcards/f$1;
.super Ljava/util/TreeSet;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/android/settings/homepage/contextualcards/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const/4 v3, 0x3

    const v4, 0x7f0d0111

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const v4, 0x7f0d0110

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/b;

    const/4 v3, 0x2

    const v4, 0x7f0d01a8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/b;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const/4 v3, 0x1

    const v4, 0x7f0d0121

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/b;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const v4, 0x7f0d0122

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/b;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const v4, 0x7f0d0123

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    const/4 v3, 0x5

    const v4, 0x7f0d010f

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/android/settings/homepage/contextualcards/f$a;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    const/4 v3, 0x4

    const v4, 0x7f0d0112

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/f$a;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/f$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
