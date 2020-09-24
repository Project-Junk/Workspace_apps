.class public final synthetic Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;->INSTANCE:Lcom/coloros/systemui/statusbar/policy/-$$Lambda$NotificationIconAreaControllerEx$R-2VkWq87fLXIwQyxEtHePSXf-g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/NotificationIconAreaControllerEx;->lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method
