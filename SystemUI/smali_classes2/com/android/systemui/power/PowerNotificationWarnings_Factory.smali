.class public final Lcom/android/systemui/power/PowerNotificationWarnings_Factory;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/power/PowerNotificationWarnings;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)",
            "Lcom/android/systemui/power/PowerNotificationWarnings_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/power/PowerNotificationWarnings;
    .locals 2

    .line 22
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->get()Lcom/android/systemui/power/PowerNotificationWarnings;

    move-result-object p0

    return-object p0
.end method
