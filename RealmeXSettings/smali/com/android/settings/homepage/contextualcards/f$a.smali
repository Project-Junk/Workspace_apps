.class final Lcom/android/settings/homepage/contextualcards/f$a;
.super Ljava/lang/Object;
.source "ContextualCardLookupTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/homepage/contextualcards/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/c;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/g;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/f$a;->a:I

    .line 54
    iput p2, p0, Lcom/android/settings/homepage/contextualcards/f$a;->b:I

    .line 55
    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/f$a;->c:Ljava/lang/Class;

    .line 56
    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/f$a;->d:Ljava/lang/Class;

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/homepage/contextualcards/f$a;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/f$a;->b:I

    return p0
.end method

.method private static synthetic b(Lcom/android/settings/homepage/contextualcards/f$a;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/f$a;->a:I

    return p0
.end method

.method public static synthetic lambda$PA86IR2mUVzZML5Mok8_lT2XwT0(Lcom/android/settings/homepage/contextualcards/f$a;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/f$a;->b(Lcom/android/settings/homepage/contextualcards/f$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$crEyQ8U7_JwuPDi1Uo2sIU7ZEuM(Lcom/android/settings/homepage/contextualcards/f$a;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/f$a;->a(Lcom/android/settings/homepage/contextualcards/f$a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 43
    check-cast p1, Lcom/android/settings/homepage/contextualcards/f$a;

    .line 1061
    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$f$a$PA86IR2mUVzZML5Mok8_lT2XwT0;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$f$a$PA86IR2mUVzZML5Mok8_lT2XwT0;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$f$a$crEyQ8U7_JwuPDi1Uo2sIU7ZEuM;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$f$a$crEyQ8U7_JwuPDi1Uo2sIU7ZEuM;

    .line 1062
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 1063
    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
