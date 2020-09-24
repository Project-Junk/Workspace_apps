.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$eNaqqYQNIHqkpp7yaugDFaK06_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$eNaqqYQNIHqkpp7yaugDFaK06_Q;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$eNaqqYQNIHqkpp7yaugDFaK06_Q;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    invoke-static {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->lambda$eNaqqYQNIHqkpp7yaugDFaK06_Q(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/b;)Z

    move-result p1

    return p1
.end method
