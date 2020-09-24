.class final Lcom/android/settings/notification/ZenModeAutomationSettings$1;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/util/Map$Entry;

.field final synthetic b:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->b:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->a:[Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    .line 135
    :goto_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->a:[Ljava/util/Map$Entry;

    array-length p2, p2

    if-ge p1, p2, :cond_1

    .line 136
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->b:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->a(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Z

    move-result-object p2

    aget-boolean p2, p2, p1

    if-eqz p2, :cond_0

    .line 137
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->b:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object p2, p2, Lcom/android/settings/notification/ZenModeAutomationSettings;->q:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->b:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->b(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/android/settings/notification/w;->c(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
