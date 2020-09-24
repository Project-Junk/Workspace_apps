.class public final synthetic Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo;

    invoke-direct {v0}, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo;-><init>()V

    sput-object v0, Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo;->INSTANCE:Lcom/android/settings/development/-$$Lambda$OverlayCategoryPreferenceController$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$NpJL7oOZ-0ai-P1TzZ0x-o_sZNo(Landroid/content/om/OverlayInfo;)Z

    move-result p1

    return p1
.end method
