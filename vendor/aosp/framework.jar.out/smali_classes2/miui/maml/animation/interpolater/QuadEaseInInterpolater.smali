.class public Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;
.super Ljava/lang/Object;
.source "QuadEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 8
    mul-float v0, p1, p1

    return v0
.end method
