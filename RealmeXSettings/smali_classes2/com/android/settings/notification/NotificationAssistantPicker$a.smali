.class public final Lcom/android/settings/notification/NotificationAssistantPicker$a;
.super Lcom/android/settingslib/widget/g;
.source "NotificationAssistantPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAssistantPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 151
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAssistantPicker$a;->a:Landroid/content/Context;

    const v1, 0x7f120e7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
