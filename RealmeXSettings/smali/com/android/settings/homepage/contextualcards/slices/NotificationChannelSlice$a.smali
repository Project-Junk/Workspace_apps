.class final Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;
.super Ljava/lang/Object;
.source "NotificationChannelSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/settings/notification/k$b;

.field final b:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/k$b;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->a:Lcom/android/settings/notification/k$b;

    .line 497
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$a;->b:Landroid/app/NotificationChannel;

    return-void
.end method
