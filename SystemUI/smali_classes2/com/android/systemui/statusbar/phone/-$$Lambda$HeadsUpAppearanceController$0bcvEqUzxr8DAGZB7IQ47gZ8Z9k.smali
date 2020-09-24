.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$0bcvEqUzxr8DAGZB7IQ47gZ8Z9k;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$hide$4(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method
