.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$V5GWh9R4JruKvtvRHKA61f6X_Lk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    check-cast p2, Lcom/android/settings/homepage/contextualcards/b;

    invoke-static {p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->lambda$V5GWh9R4JruKvtvRHKA61f6X_Lk(Lcom/android/settings/homepage/contextualcards/b;Lcom/android/settings/homepage/contextualcards/b;)I

    move-result p1

    return p1
.end method
