.class public final synthetic Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/NotificationAccessSettings;

.field private final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$k6vtt8BtqIcSCHs_Uz0r1uz3juE;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationAccessSettings;->lambda$k6vtt8BtqIcSCHs_Uz0r1uz3juE(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method
