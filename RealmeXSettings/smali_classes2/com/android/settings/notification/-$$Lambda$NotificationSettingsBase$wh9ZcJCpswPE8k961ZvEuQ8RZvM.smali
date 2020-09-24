.class public final synthetic Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;

    invoke-direct {v0}, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;-><init>()V

    sput-object v0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;

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

    check-cast p1, Landroid/app/NotificationChannel;

    check-cast p2, Landroid/app/NotificationChannel;

    invoke-static {p1, p2}, Lcom/android/settings/notification/NotificationSettingsBase;->lambda$wh9ZcJCpswPE8k961ZvEuQ8RZvM(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result p1

    return p1
.end method
