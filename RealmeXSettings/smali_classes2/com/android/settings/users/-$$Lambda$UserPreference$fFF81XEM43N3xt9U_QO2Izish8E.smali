.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;

    invoke-direct {v0}, Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;-><init>()V

    sput-object v0, Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;

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

    check-cast p1, Lcom/android/settings/users/UserPreference;

    check-cast p2, Lcom/android/settings/users/UserPreference;

    invoke-static {p1, p2}, Lcom/android/settings/users/UserPreference;->lambda$fFF81XEM43N3xt9U_QO2Izish8E(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I

    move-result p1

    return p1
.end method
