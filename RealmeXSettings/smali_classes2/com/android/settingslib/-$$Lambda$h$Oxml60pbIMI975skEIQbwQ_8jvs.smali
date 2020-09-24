.class public final synthetic Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settingslib/h$a;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;->f$0:I

    iput p2, p0, Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;->f$1:I

    return-void
.end method


# virtual methods
.method public final isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 2

    iget v0, p0, Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;->f$0:I

    iget v1, p0, Lcom/android/settingslib/-$$Lambda$h$Oxml60pbIMI975skEIQbwQ_8jvs;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/settingslib/h;->lambda$Oxml60pbIMI975skEIQbwQ_8jvs(IILandroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result p1

    return p1
.end method
