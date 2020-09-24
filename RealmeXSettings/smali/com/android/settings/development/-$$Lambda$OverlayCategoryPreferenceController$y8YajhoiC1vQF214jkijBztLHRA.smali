.class public final synthetic Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$y8YajhoiC1vQF214jkijBztLHRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$y8YajhoiC1vQF214jkijBztLHRA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$y8YajhoiC1vQF214jkijBztLHRA;

    invoke-direct {v0}, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$y8YajhoiC1vQF214jkijBztLHRA;-><init>()V

    sput-object v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$y8YajhoiC1vQF214jkijBztLHRA;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$y8YajhoiC1vQF214jkijBztLHRA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$y8YajhoiC1vQF214jkijBztLHRA(Landroid/content/om/OverlayInfo;)I

    move-result p1

    return p1
.end method
