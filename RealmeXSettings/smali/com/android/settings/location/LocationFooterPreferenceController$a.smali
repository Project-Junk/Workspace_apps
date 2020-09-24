.class final Lcom/android/settings/location/LocationFooterPreferenceController$a;
.super Ljava/lang/Object;
.source "LocationFooterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationFooterPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/content/pm/ApplicationInfo;

.field final c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(ILandroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/android/settings/location/LocationFooterPreferenceController$a;->a:I

    .line 216
    iput-object p2, p0, Lcom/android/settings/location/LocationFooterPreferenceController$a;->b:Landroid/content/pm/ApplicationInfo;

    .line 217
    iput-object p3, p0, Lcom/android/settings/location/LocationFooterPreferenceController$a;->c:Landroid/content/ComponentName;

    return-void
.end method
